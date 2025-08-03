.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;
.super Landroid/content/ContentProvider;
.source "GeolocProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final MESSAGE_COLUMNS:[Ljava/lang/String;

.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->AUTHORITY:Ljava/lang/String;

    .line 45
    const-string v2, "geolocshare"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    const-string v2, "geolocshare/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 49
    const-string/jumbo v7, "state"

    const-string/jumbo v8, "reason_code"

    const-string v0, "_id"

    const-string/jumbo v1, "sharing_id"

    const-string v2, "contact"

    const-string v3, "content"

    const-string v4, "mime_type"

    const-string v5, "direction"

    const-string/jumbo v6, "timestamp"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private buildMessagesCursor()Landroid/database/Cursor;
    .locals 2

    .line 100
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 109
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: No last segment."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p0

    if-nez p0, :cond_1

    .line 116
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: Message not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 124
    const-string v8, "delivered_timestamp"

    const-string/jumbo v9, "state"

    const-string v1, "_id"

    const-string v2, "chat_id"

    const-string/jumbo v3, "remote_uri"

    const-string v4, "content_type"

    const-string v5, "direction"

    const-string v6, "ext_info"

    const-string/jumbo v7, "reason"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "_id= ? "

    .line 137
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 143
    :try_start_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1, v4, v4, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 145
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_5

    .line 148
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x0

    .line 154
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    const-string v3, "content_type"

    .line 157
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 156
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 158
    const-string v3, "ext_info"

    .line 159
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 158
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 160
    const-string/jumbo v3, "remote_uri"

    .line 161
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 160
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v5, "direction"

    .line 163
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 162
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v8, :cond_3

    .line 165
    const-string v6, "application/vnd.gsma.rcspushlocation+xml"

    .line 166
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v10, :cond_3

    add-int/lit8 v14, v2, 0x1

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "_id"

    .line 171
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 170
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 172
    :goto_2
    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v3, "reason"

    .line 177
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 176
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->transReason(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v3, "delivered_timestamp"

    .line 179
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 178
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v12, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string/jumbo v3, "state"

    .line 181
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 180
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->transState(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v5, v2

    filled-new-array/range {v5 .. v13}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, p1

    .line 168
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v14

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_4

    :cond_3
    move-object/from16 v3, p1

    goto/16 :goto_1

    .line 188
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 149
    :cond_5
    :goto_3
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildMessageCursor: Message not found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_6

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :goto_4
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_7
    throw v0
.end method

.method private transReason(I)I
    .locals 0

    .line 230
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object p0

    if-nez p0, :cond_0

    .line 232
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    return p0

    .line 234
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 267
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 261
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 248
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 245
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 242
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 239
    :pswitch_5
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 236
    :pswitch_6
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transState(II)I
    .locals 2

    .line 199
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 212
    :cond_2
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 205
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p1

    if-ne p1, p2, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    goto :goto_0

    .line 207
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    if-ne p0, p2, :cond_5

    .line 208
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result v0

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 58
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 68
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 82
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ImCache is not ready yet."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 86
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_1

    .line 95
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "return null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->buildMessagesCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 195
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
