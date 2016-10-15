#include "cdatabase.h"

#include <QCoreApplication>
#include <QtDebug>
#include <QSqlError>
#include <QtSql/QSqlTableModel>
#include <QtSql/QSqlQuery>
#include <QStringList>

#include "cmirislib2.h"

CDataBase::CDataBase()
{
	m_sqlModel = NULL;
}

CDataBase::~CDataBase()
{
	if (m_sqlModel) {
		delete m_sqlModel;
		m_sqlModel = NULL;
	}
	if (m_recordList.size() != 0) {
		for (int i = 0; i < m_recordList.size(); i++) {
			delete m_recordList.at(i);
		}
		m_recordList.clear();
	}
}

int CDataBase::open() {
    m_db = QSqlDatabase::addDatabase("QSQLITE");
#if defined(WIN32)
    //m_db.setDatabaseName("C:/CMIMIRDemo_WIN/2.0.3/Enroll.db");
    m_db.setDatabaseName("./Enroll.db");
#else
    //m_db.setDatabaseName("Enroll.db");
    m_db.setDatabaseName("/usr/local/share/aizhetech/Enroll.db");
#endif

	if(m_db.open()) {
		m_sqlModel = new QSqlTableModel(NULL, m_db);
		//m_sqlModel->setTable("EnrollTable");

        QSqlQuery query(QString("CREATE TABLE IF NOT EXISTS EnrollTable"
                        "(Id INTEGER, Name TEXT, "
                        "LeftIrisTemplate VARCHAR(%1), "
                        "RightIrisTemplate VARCHAR(%2), "
                        "LeftIrisPath TEXT, "
                        "RightIrisPath TEXT, "
                        "FaceImagePath TEXT)")
                        .arg(CMI_MIR_ENROL_TEMPLATE_SIZE)
                        .arg(CMI_MIR_ENROL_TEMPLATE_SIZE));

        if (!query.exec()) return false;

        query.setForwardOnly(true);
        if (!query.exec("SELECT * FROM EnrollTable")) return false;

		if (m_recordList.size() != 0) {
			for (int i = 0; i < m_recordList.size(); i++) {
				delete m_recordList.at(i);
			}
			m_recordList.clear();
		}

		while (query.next()) {
			DBRecord *record = new DBRecord();
            record->setId(query.value(0).toInt());
            QString qstr;
            qstr = query.value(1).toString();
            record->setName(qstr);
            QByteArray qba;
            qba = query.value(2).toByteArray();
            record->setLeftIrisTemplate(qba);
            qba = query.value(3).toByteArray();
            record->setRightIrisTemplate(qba);
            qstr = query.value(4).toString();
            record->setLeftIrisPath(qstr);
            qstr = query.value(5).toString();
            record->setRightIrisPath(qstr);
            qstr = query.value(6).toString();
            record->setFaceImagePath(qstr);
            m_recordList << record;
		}
        return 0;
	}
	else {
        return m_db.lastError().number();
	}
}

void CDataBase::close() {

    m_db.close();

    QStringList names;
    names = QSqlDatabase::connectionNames();
    if (names.size() > 0)
        QSqlDatabase::removeDatabase(names.at(0));

    if (m_sqlModel) {
        delete m_sqlModel;
        m_sqlModel = NULL;
    }

	if (m_recordList.size() != 0) {
		for (int i = 0; i < m_recordList.size(); i++) {
			delete m_recordList.at(i);
		}
		m_recordList.clear();
	}
}

bool CDataBase::insert(DBRecord &record) {

	QSqlQuery query(m_db);

    query.prepare("INSERT INTO EnrollTable (Id, Name, LeftIrisTemplate, RightIrisTemplate, LeftIrisPath, RightIrisPath, FaceImagePath)"
                                   "VALUES (:ID, :NAME, :LEFT_IRIS_TEMPLATE, :RIGHT_IRIS_TEMPLATE, :LEFT_IRIS_PATH, :RIGHT_IRIS_PATH, :FACE_IMAGE_PATH)");

	query.bindValue(":ID", QVariant(record.id()));
	query.bindValue(":NAME", QVariant(record.name()));
	query.bindValue(":LEFT_IRIS_TEMPLATE", QVariant(record.leftIrisTemplate()));
	query.bindValue(":RIGHT_IRIS_TEMPLATE", QVariant(record.rightIrisTemplate()));
    query.bindValue(":LEFT_IRIS_PATH", QVariant(record.leftIrisPath()));
    query.bindValue(":RIGHT_IRIS_PATH", QVariant(record.rightIrisPath()));
    query.bindValue(":FACE_IMAGE_PATH", QVariant(record.faceImagePath()));

	if (query.exec()) {
		DBRecord *newRecord = new DBRecord(record);
		m_recordList << newRecord;
		return true;
	}
    else {
		return false;
	}
}

bool CDataBase::update(DBRecord &record) {

    QSqlQuery query(m_db);

    query.prepare(QString("UPDATE EnrollTable SET Name=:NAME, "
                          "LeftIrisTemplate=:LEFT_IRIS_TEMPLATE, "
                          "RightIrisTemplate=:RIGHT_IRIS_TEMPLATE, "
                          "LeftIrisPath=:LEFT_IRIS_PATH, "
                          "RightIrisPath=:RIGHT_IRIS_PATH, "
                          "FaceImagePath=:FACE_IMAGE_PATH "
                          "WHERE Id=:ID"));


    query.bindValue(":NAME", QVariant(record.name()));
    query.bindValue(":LEFT_IRIS_TEMPLATE", QVariant(record.leftIrisTemplate()));
    query.bindValue(":RIGHT_IRIS_TEMPLATE", QVariant(record.rightIrisTemplate()));
    query.bindValue(":LEFT_IRIS_PATH", QVariant(record.leftIrisPath()));
    query.bindValue(":RIGHT_IRIS_PATH", QVariant(record.rightIrisPath()));
    query.bindValue(":FACE_IMAGE_PATH", QVariant(record.faceImagePath()));
	query.bindValue(":ID", QVariant(record.id()));

    if (query.exec()) {
        return true;
    }
    else {
        return false;
    }
}


