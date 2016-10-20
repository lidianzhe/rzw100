/****************************************************************************
** Meta object code from reading C++ file 'udpserverthread.h'
**
** Created: Thu Oct 20 11:45:30 2016
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "udpserverthread.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'udpserverthread.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_UdpServerThread[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   46,   55,   55, 0x05,
      56,   74,   55,   55, 0x05,
      83,  101,   55,   55, 0x05,
     106,  138,   55,   55, 0x05,
     147,   46,   55,   55, 0x05,

 // slots: signature, parameters, type, tag, flags
     173,   55,   55,   55, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_UdpServerThread[] = {
    "UdpServerThread\0readingDatagrams(AzIrisInfo&)\0"
    "irisInfo\0\0deletePerson(int)\0personId\0"
    "deleteRecord(int)\0nums\0"
    "updateSettings(ConfigSettings*)\0"
    "settings\0enrollPerson(AzIrisInfo&)\0"
    "processPendingDatarams()\0"
};

void UdpServerThread::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        UdpServerThread *_t = static_cast<UdpServerThread *>(_o);
        switch (_id) {
        case 0: _t->readingDatagrams((*reinterpret_cast< AzIrisInfo(*)>(_a[1]))); break;
        case 1: _t->deletePerson((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->deleteRecord((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->updateSettings((*reinterpret_cast< ConfigSettings*(*)>(_a[1]))); break;
        case 4: _t->enrollPerson((*reinterpret_cast< AzIrisInfo(*)>(_a[1]))); break;
        case 5: _t->processPendingDatarams(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData UdpServerThread::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject UdpServerThread::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_UdpServerThread,
      qt_meta_data_UdpServerThread, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &UdpServerThread::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *UdpServerThread::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *UdpServerThread::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_UdpServerThread))
        return static_cast<void*>(const_cast< UdpServerThread*>(this));
    return QThread::qt_metacast(_clname);
}

int UdpServerThread::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void UdpServerThread::readingDatagrams(AzIrisInfo & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void UdpServerThread::deletePerson(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void UdpServerThread::deleteRecord(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void UdpServerThread::updateSettings(ConfigSettings * _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void UdpServerThread::enrollPerson(AzIrisInfo & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_END_MOC_NAMESPACE
