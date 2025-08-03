.class public Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;
.super Ljava/lang/Object;
.source "CdmaSmsUtil.java"


# static fields
.field public static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARAM_ID_BEARER_DATA:I = 0x8

.field public static final PARAM_ID_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_ID_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ID_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_ID_TELESERVICE:I = 0x0

.field public static final SMS_MSG_TYPE_PP:I = 0x0

.field public static final TELESERVICE_WAP:I = 0x1004


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdminMsg([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 221
    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_5

    .line 226
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 231
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 233
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    const/16 v2, 0x1004

    if-ne v1, v2, :cond_1

    .line 243
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    .line 243
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 239
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :try_start_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    return v0

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    :goto_4
    throw v0

    :cond_2
    :goto_5
    return v0
.end method

.method public static isValid3GPP2PDU([B)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 30
    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto/16 :goto_a

    .line 35
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v0

    :cond_1
    const/4 v3, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_a

    .line 44
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 45
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-gtz v5, :cond_2

    .line 46
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isValid3GPP2PDU() no data after paramId"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v2

    goto/16 :goto_6

    .line 49
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 50
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_3

    if-nez v4, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 53
    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-ge v6, v5, :cond_4

    .line 54
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValid3GPP2PDU() wrong after PARAM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0

    :cond_4
    const-wide/16 v6, 0x0

    if-eqz v4, :cond_8

    if-eq v4, v3, :cond_9

    const/4 v8, 0x2

    if-eq v4, v8, :cond_7

    if-eq v4, v2, :cond_6

    const/16 v8, 0x8

    if-eq v4, v8, :cond_5

    .line 76
    :try_start_4
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValid3GPP2PDU() Invalid paramID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :try_start_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v0

    :cond_5
    or-int/lit8 v1, v1, 0x8

    goto :goto_4

    :cond_6
    int-to-long v8, v5

    .line 67
    :try_start_6
    invoke-virtual {p0, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v8, v8, v6

    if-gez v8, :cond_9

    .line 91
    :try_start_7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v0

    :cond_7
    or-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_8
    or-int/lit8 v1, v1, 0x1

    :cond_9
    :goto_4
    if-eq v4, v2, :cond_1

    int-to-long v4, v5

    .line 80
    :try_start_8
    invoke-virtual {p0, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    cmp-long v3, v3, v6

    if-gez v3, :cond_1

    .line 91
    :try_start_9
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return v0

    .line 91
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 87
    :goto_6
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 91
    :try_start_c
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :goto_7
    const/16 p0, 0xb

    if-ne v1, p0, :cond_b

    return v3

    .line 100
    :cond_b
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValid3GPP2PDU() PDU doesn\'t have mandatory paramId"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 91
    :goto_8
    :try_start_d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_9
    throw v0

    :cond_c
    :goto_a
    return v0
.end method
