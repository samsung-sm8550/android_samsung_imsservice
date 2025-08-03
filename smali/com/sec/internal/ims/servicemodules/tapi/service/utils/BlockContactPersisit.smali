.class public final Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
.super Ljava/lang/Object;
.source "BlockContactPersisit.java"


# static fields
.field public static final BLOCKED_CONTACT_TABLE:Ljava/lang/String; = "blockedContacts"

.field private static final LOG_TAG:Ljava/lang/String; = "BlockContactPersisit"

.field private static final SELECTION_BLOCKED:Ljava/lang/String; = "select * from blockedContacts where phone_number=?"

.field public static mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mContext:Landroid/content/Context;

    .line 64
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mDatabaseHelper:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v0, "got exception when getting writableDatabase"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static changeContactInfo(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    .locals 2

    .line 143
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    .line 144
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 146
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->insertBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;Z)J

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->updateBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 144
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    :goto_2
    if-eqz p0, :cond_2

    .line 152
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private notifyChanged(Ljava/lang/String;)V
    .locals 1

    .line 98
    const-string v0, "content://com.gsma.services.rcs.provider.blockedcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public insertBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;Z)J
    .locals 6

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertBlockContactInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "phone_number"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingState()Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_blocked"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "key_blocking_timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "blockedContacts"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "got exception when inserting block contact info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->notifyChanged(Ljava/lang/String;)V

    :cond_1
    return-wide v1

    .line 76
    :cond_2
    :goto_1
    const-string p0, "ContactInfo phone num is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 107
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "select * from blockedContacts where phone_number=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v0, "got exception when querying block contact info"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public updateBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    .locals 5

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateBlockContactInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 126
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "phone_number"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingState()Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_blocked"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "key_blocking_timestamp"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "blockedContacts"

    const-string/jumbo v3, "phone_number=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 136
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v0, "got exception when updating block contact info"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    move p0, v1

    :goto_0
    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 120
    :cond_2
    :goto_1
    const-string p0, "Info or contact is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
