.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;
.super Ljava/lang/Object;
.source "CloudMessageRCSStorageAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CloudMessageRCSStorageAdapter"


# instance fields
.field public final PROVIDER_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "com.samsung.rcs.im"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->PROVIDER_NAME:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    return-void
.end method


# virtual methods
.method public deleteParticipantsUsingRowId(J)I
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeleteparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 153
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 152
    const-string p2, "chat_id =?"

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteRCSDBmessageUsingId(I)I
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeletemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v1, "_id=?"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insertMessageFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 40
    const-string v0, "content://com.samsung.rcs.im/cloudinsertmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public insertNotificationFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    const-string v0, "content://com.samsung.rcs.im/cloudinsertnotification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertParticipantsFromBufferDbToRCSDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 77
    const-string/jumbo v0, "sim_imsi"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "remove imsi for cloudinsertparticipant"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 81
    :cond_0
    const-string v0, "content://com.samsung.rcs.im/cloudinsertparticipant"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .line 50
    const-string v0, "content://com.samsung.rcs.im/cloudinsertsession"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSessionFromBufferDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string p0, " empty participants list return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ContentValues;

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 61
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insertSingleSessionPartsToDB(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public insertSystemUserMessage(Landroid/content/ContentValues;)V
    .locals 1

    .line 217
    const-string v0, "content://com.samsung.rcs.im/cloudmakenewsystemusermessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public queryAllMessage()Landroid/database/Cursor;
    .locals 7

    .line 125
    const-string v0, "content://com.samsung.rcs.im/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 126
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllMessage([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 132
    const-string v0, "content://com.samsung.rcs.im/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 133
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .locals 7

    .line 94
    const-string v0, "content://com.samsung.rcs.im/session"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSession([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 100
    const-string v0, "content://com.samsung.rcs.im/session"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 106
    const-string v0, "content://com.samsung.rcs.im/session"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "sim_imsi=?"

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagechatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingRowId(J)Landroid/database/Cursor;
    .locals 6

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagerowid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/messagenotifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudqueryparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRcsDBMessageUsingImdnId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 170
    const-string v0, "content://com.samsung.rcs.im/cloudquerymessageimdnid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 174
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionchatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionUsingId(I)Landroid/database/Cursor;
    .locals 6

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateMessageFromBufferDb(ILandroid/content/ContentValues;)I
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v1, "_id=?"

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateParticipantsFromBufferDbToRCSDb(JLandroid/content/ContentValues;)I
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdateparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 73
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string p2, "_id =?"

    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateRCSNotificationUsingImdnId(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatenotification/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 212
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const-string p3, "imdn_id=? AND sender_uri=?"

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatesession/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const-string v1, "chat_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
