.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;
.super Ljava/lang/Object;
.source "CloudMessageTelephonyStorageAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CloudMessageTelephonyStorageAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    return-void
.end method


# virtual methods
.method public getChatRowFromTelephonyDb(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getChatRowFromTelephony(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFtRowFromTelephonyDb(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTelephonyAddr(JZZ)Landroid/database/Cursor;
    .locals 8

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_0

    .line 41
    const-string p3, "content://bin_mms/{0}/addr"

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 43
    const-string p3, "content://spammms/spamaddr"

    goto :goto_0

    .line 42
    :cond_1
    const-string p3, "content://mms/{0}/addr"

    .line 45
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 47
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getTelephonyPart(JZZ)Landroid/database/Cursor;
    .locals 8

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    sget-object p1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS_PART:Landroid/net/Uri;

    if-eqz p3, :cond_1

    .line 54
    sget-object p1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_MMS_PART:Landroid/net/Uri;

    :cond_0
    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_0

    .line 56
    sget-object p1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SPAM_MMS_PART:Landroid/net/Uri;

    goto :goto_0

    .line 58
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllFtRCSFromTelephony(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->queryAllFtRCSFromTelephony(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllRCSChatFromTP(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->queryAllRCSChatFromTP(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionsFromTelephony(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->queryAllSessionsFromTelephony(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryBinMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 113
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryBinMMSPduFromTelephonyDb,  whereClaus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selectionArgs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v3, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_MMS:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryBinSMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_SMS:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 104
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMMSPduFromTelephonyDb,  whereClaus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selectionArgs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v3, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbUseID(JZZ)Landroid/database/Cursor;
    .locals 7

    .line 62
    sget-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS:Landroid/net/Uri;

    if-eqz p3, :cond_1

    .line 64
    sget-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_0

    .line 66
    sget-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_MMS:Landroid/net/Uri;

    goto :goto_0

    .line 68
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "_id = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsInfoFromTP(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->queryParticipantsInfoFromTP(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsUsingChatIdFromTP(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->queryParticipantsUsingChatIdFromTP(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSFromTelephonyDb(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->queryRCSFromTelephonyDb(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSUseRowId(JZZ)Landroid/database/Cursor;
    .locals 6

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 93
    sget-object p1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SMS:Landroid/net/Uri;

    if-eqz p4, :cond_1

    .line 95
    sget-object p1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_SMS:Landroid/net/Uri;

    :cond_0
    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_0

    .line 97
    sget-object p1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v3, "_id=?"

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SMS:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySpamMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 130
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySpamMMSPduFromTelephonyDb,  whereClaus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selectionArgs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v3, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySpamSMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
