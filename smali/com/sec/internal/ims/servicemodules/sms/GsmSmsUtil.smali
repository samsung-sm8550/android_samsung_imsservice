.class public Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;
.super Ljava/lang/Object;
.source "GsmSmsUtil.java"


# static fields
.field public static final BIT_TP_DCS_CLASS2_SIM_MSG:I = 0x2

.field public static final BIT_TP_PID_SIM_DATA_DOWNLOAD:I = 0x3f

.field public static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final IPC_ERR_MEM_CAP_EXCEED:I = 0x8016

.field private static final IPC_ERR_SMS_ME_FULL:I = 0x8080

.field private static final IPC_ERR_SMS_SIM_FULL:I = 0x8081

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_DATA_LEN:I = 0xff

.field private static final NANP_LENGTH:I = 0xa

.field private static final PREFIX_NUMBER_PLUS:Ljava/lang/String; = "011"

.field public static final RIL_CODE_RP_ERROR:I = 0x8000

.field public static final RIL_CODE_SMS_OK_:I = 0x0

.field public static final RP_ACK_N_MS:I = 0x3

.field public static final RP_DATA_MS_N:I = 0x0

.field public static final RP_DATA_N_MS:I = 0x1

.field public static final RP_ERROR_N_MS:I = 0x5

.field public static final RP_ERR_INVALID_MSG:I = 0x5f

.field public static final RP_SMMA:I = 0x6

.field public static final TP_PID_SIM_DATA_DOWNLOAD:I = 0x7f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3gppPduFromTpdu([BILjava/lang/String;Ljava/lang/String;)[B
    .locals 7

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 61
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    .line 66
    :try_start_0
    aget-byte v4, p0, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 67
    new-array v6, v4, [B

    .line 69
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-lt v6, v4, :cond_4

    .line 74
    array-length p0, p0

    sub-int/2addr p0, v4

    new-array v4, p0, [B

    .line 76
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_3

    int-to-byte p0, p0

    .line 82
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 83
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 88
    :cond_0
    invoke-static {p3, v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 92
    array-length p3, p1

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 93
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 96
    :goto_0
    invoke-static {p2, v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    array-length p2, p1

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 101
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 103
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 106
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 98
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "smsc is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "rp_oa is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Exception : Fail to Read TPDU from PDU"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Exception : Fail to Read Sca from PDU"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 112
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static get3gppRPError(Ljava/lang/String;[B)I
    .locals 2

    if-eqz p0, :cond_2

    .line 140
    const-string v0, "application/vnd.3gpp.sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 145
    aget-byte v1, p1, v0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x3

    .line 146
    aget-byte p0, p1, p0

    and-int/lit8 p0, p0, 0x7f

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static get3gppTpdu([B)[B
    .locals 9

    .line 186
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 187
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 194
    :try_start_0
    aget-byte p0, p0, v3

    const/4 v6, 0x3

    if-ne v6, p0, :cond_2

    .line 199
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 200
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 201
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 202
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    .line 204
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, p0, :cond_0

    .line 313
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v5

    .line 209
    :cond_0
    :try_start_2
    new-array p0, p0, [B

    .line 211
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1

    .line 215
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 217
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :catch_2
    move-exception p0

    goto/16 :goto_c

    :catch_3
    move-exception p0

    goto/16 :goto_d

    .line 213
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Fail to read TPDU from PDU"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v6, 0x1

    if-ne v6, p0, :cond_b

    .line 227
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 228
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 229
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/lit16 v7, p0, 0xff

    .line 231
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v8, v7, :cond_3

    .line 313
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v5

    :cond_3
    add-int/2addr v7, v6

    .line 236
    :try_start_6
    new-array v7, v7, [B

    .line 237
    invoke-virtual {v4, v7, v6, p0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-gez v6, :cond_4

    .line 313
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v5

    .line 243
    :cond_4
    :try_start_8
    aput-byte p0, v7, v3

    .line 244
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result p0

    if-lez p0, :cond_a

    .line 248
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    if-lez p0, :cond_6

    .line 251
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v3
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v3, p0, :cond_5

    .line 313
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v5

    .line 255
    :cond_5
    :try_start_a
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 258
    :cond_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result p0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-gtz p0, :cond_7

    .line 313
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_5

    :catch_7
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-object v5

    .line 263
    :cond_7
    :try_start_c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    .line 265
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-ge v1, p0, :cond_8

    .line 313
    :try_start_d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_6

    :catch_8
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return-object v5

    .line 270
    :cond_8
    :try_start_e
    new-array p0, p0, [B

    .line 271
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_9

    .line 275
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 276
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 313
    :try_start_f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_7

    :catch_9
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-object p0

    .line 273
    :cond_9
    :try_start_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Exception : fail to read tpdu"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EOF RPDU. before reading RP-DA len"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/4 v6, 0x5

    if-ne v6, p0, :cond_10

    .line 282
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 283
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 284
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    .line 286
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-ge v1, p0, :cond_c

    .line 313
    :try_start_11
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_8

    :catch_a
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return-object v5

    :cond_c
    :goto_9
    if-ge v3, p0, :cond_d

    .line 292
    :try_start_12
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 294
    :cond_d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result p0

    if-lez p0, :cond_f

    .line 296
    new-array p0, p0, [B

    .line 297
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_e

    .line 301
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_a

    .line 299
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Exception : Reading TPDU from RIL PDU"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_f
    :goto_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 313
    :try_start_13
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b
    return-object p0

    .line 313
    :cond_10
    :try_start_14
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_e

    :catch_c
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 309
    :goto_c
    :try_start_15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 313
    :try_start_16
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_e

    .line 307
    :goto_d
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 313
    :try_start_18
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    :goto_e
    return-object v5

    .line 313
    :goto_f
    :try_start_19
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    :goto_10
    throw p0
.end method

.method public static get3gppTpduFromPdu([B)[B
    .locals 2

    .line 177
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpdu([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getDeliverReportFromPdu(II[BII)[B
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 483
    array-length v1, p2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x1

    .line 486
    aget-byte v3, p2, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x100

    const/4 v5, 0x0

    aget-byte v6, p2, v5

    and-int/2addr v6, v4

    add-int/2addr v3, v6

    .line 487
    sget-object v6, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeliverReportFromPdu - reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 491
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x41

    const/4 v9, 0x3

    if-eqz v3, :cond_3

    const v10, 0x8000

    if-ge v3, v10, :cond_1

    goto :goto_0

    :cond_1
    if-le v3, v10, :cond_c

    .line 542
    :try_start_0
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->write(I)V

    int-to-byte p1, p1

    .line 543
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 544
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 545
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRPErrCause(I)B

    move-result p1

    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 548
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 549
    sget-object p1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_2

    .line 550
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 551
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 552
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 553
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPErrCause(I)B

    move-result p0

    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 554
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p0

    if-nez p0, :cond_c

    .line 556
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_3

    :cond_3
    :goto_0
    const/4 p0, 0x2

    .line 495
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    int-to-byte p1, p1

    .line 496
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 497
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 498
    aget-byte p1, p2, v9

    if-lez p1, :cond_4

    array-length v2, p2

    if-lt v2, p1, :cond_4

    .line 500
    array-length p0, p2

    sub-int/2addr p0, v9

    invoke-virtual {v7, p2, v9, p0}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 504
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    move v9, p0

    :goto_1
    if-eqz p4, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    int-to-byte p0, v9

    .line 513
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 517
    :goto_2
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz v3, :cond_8

    and-int/lit16 p0, v3, 0xff

    .line 520
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    :cond_8
    if-eqz p3, :cond_9

    int-to-byte v5, v1

    :cond_9
    if-eqz p4, :cond_a

    or-int/lit8 p0, v5, 0x2

    int-to-byte v5, p0

    .line 530
    :cond_a
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz p3, :cond_b

    int-to-byte p0, p3

    .line 533
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    :cond_b
    if-eqz p4, :cond_c

    int-to-byte p0, p4

    .line 537
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 559
    :cond_c
    :goto_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 560
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 563
    :goto_4
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 565
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 567
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_6
    return-object v0
.end method

.method private static getRPErrCause(I)B
    .locals 0

    .line 0
    sparse-switch p0, :sswitch_data_0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0

    :sswitch_0
    const/16 p0, 0x6f

    return p0

    :sswitch_1
    const/16 p0, 0x16

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8016 -> :sswitch_1
        0x8080 -> :sswitch_1
        0x8081 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRilRPErrCode(I)I
    .locals 1

    .line 0
    const v0, 0x8000

    add-int/2addr p0, v0

    return p0
.end method

.method public static getRpSMMAPdu(I)[B
    .locals 3

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x2

    .line 375
    new-array v0, v0, [B

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getSCAFromPdu([B)Ljava/lang/String;
    .locals 3

    .line 122
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 126
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_3

    .line 127
    array-length v2, p0

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v0, v1, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 133
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "[getSCAFromPdu] Exception : sca is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected static getSca(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .locals 1

    .line 782
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x3

    if-le p2, p3, :cond_0

    const-string p2, "011"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 786
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "+"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    move-object p0, p1

    goto :goto_0

    .line 791
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_2

    .line 793
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSmscSet()Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-nez p0, :cond_3

    .line 796
    const-string p0, "4444"

    :cond_3
    :goto_0
    return-object p0
.end method

.method protected static getScaForRpDa(Z[BLjava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 764
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getSCAFromPdu([B)Ljava/lang/String;

    move-result-object p2

    .line 768
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 769
    sget-object p0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p3, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p3, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p3, p0, :cond_1

    goto :goto_0

    .line 772
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "pdu is malformed. no SCA"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string p0, "noSCA"

    return-object p0

    .line 770
    :cond_2
    :goto_0
    const-string p2, "7"

    .line 777
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendSMSOverIMS: SmscAddr FromPdu="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected static getScaFromPsismscPSI(Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Landroid/telephony/TelephonyManager;ILcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .locals 7

    .line 805
    const-string v0, ";"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 807
    :try_start_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "PSISMSC: "

    const-string/jumbo v5, "there is no SMS_PSI"

    const-string v6, ""

    if-eq p2, v3, :cond_5

    :try_start_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_0

    goto/16 :goto_1

    .line 821
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_2

    .line 823
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSmsPsi()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 824
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 825
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string p0, "noPSI"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 829
    :cond_2
    :try_start_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_9

    .line 832
    invoke-static {p3, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getPsismsc(Landroid/telephony/TelephonyManager;I)[B

    move-result-object p0

    if-nez p0, :cond_3

    .line 834
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "there is no PSISMSC"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 836
    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 837
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_4

    .line 838
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 840
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9

    .line 842
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    goto :goto_3

    .line 809
    :cond_5
    :goto_1
    invoke-static {p3, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getPsismsc(Landroid/telephony/TelephonyManager;I)[B

    move-result-object p3

    if-eqz p3, :cond_6

    .line 811
    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 812
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 813
    :cond_6
    sget-object p3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_9

    .line 814
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-static {p0, p2, p4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSmsPsi()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 815
    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, p0

    goto :goto_3

    .line 816
    :cond_8
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    :cond_9
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    throw p0
.end method

.method private static getTPErrCause(I)B
    .locals 0

    .line 0
    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/16 p0, -0x2d

    return p0

    :sswitch_1
    const/16 p0, -0x30

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8016 -> :sswitch_1
        0x8080 -> :sswitch_0
        0x8081 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTPMRFromPdu([B)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 383
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 384
    array-length v2, p0

    add-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_1

    return v0

    .line 387
    :cond_1
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getTPPidDcsFromPdu([B)[B
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 600
    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 602
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 603
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 606
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 607
    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v5, 0x2

    if-ge p0, v7, :cond_1

    .line 636
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0

    .line 611
    :cond_1
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 613
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 615
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p0, v4

    .line 620
    div-int/2addr p0, v1

    add-int/lit8 v0, p0, 0x1

    .line 621
    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p0, p0, 0x3

    if-ge v1, p0, :cond_2

    .line 636
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v2

    :cond_2
    int-to-long v0, v0

    .line 624
    :try_start_4
    invoke-virtual {v6, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 629
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    aput-byte p0, v2, v3

    .line 630
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    aput-byte p0, v2, v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 636
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    .line 632
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 636
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_2
    return-object v2

    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 641
    :goto_4
    throw p0
.end method

.method public static is911FromPdu([B)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 650
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 651
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 654
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 655
    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v1, 0x2

    if-ge p0, v3, :cond_1

    .line 685
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0

    .line 659
    :cond_1
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    const/4 p0, 0x1

    .line 661
    invoke-virtual {v2, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 663
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p0

    .line 665
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    .line 666
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x3

    add-int/2addr v1, v5

    if-ge v4, v1, :cond_2

    .line 685
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0

    .line 670
    :cond_2
    :try_start_4
    new-array v1, v3, [B

    .line 671
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gez v4, :cond_3

    .line 685
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v0

    .line 675
    :cond_3
    :try_start_6
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    if-ne v3, v5, :cond_4

    if-eqz v1, :cond_4

    .line 676
    const-string v3, "(.*)19f1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 677
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Incoming 911"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 685
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_4

    .line 685
    :cond_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 681
    :goto_4
    :try_start_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 685
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :goto_5
    return v0

    :goto_6
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 690
    :goto_7
    throw p0
.end method

.method public static isAck(Ljava/lang/String;[B)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 161
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAck: contentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    aget-byte p1, p1, v3

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v0

    .line 158
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "contentType is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAdminMsg([B)Z
    .locals 2

    .line 753
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPPidDcsFromPdu([B)[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 754
    aget-byte p0, p0, v0

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isISODigit(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 722
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 723
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 724
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 727
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 728
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public static isRPErrorForRetransmission(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isStatusReport([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 440
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    aget-byte v1, p0, v0

    if-ltz v1, :cond_1

    .line 445
    array-length v2, p0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-le v2, v1, :cond_1

    .line 446
    aget-byte p0, p0, v1

    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method private static isTwoToNine(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static makeRPErrorPdu([B)[B
    .locals 4

    .line 327
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-lt v0, v1, :cond_0

    .line 328
    aget-byte p0, p0, v2

    and-int/2addr p0, v3

    goto :goto_0

    :cond_0
    move p0, v3

    .line 331
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 332
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    .line 334
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 335
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 336
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p0, 0x5f

    .line 337
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 338
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 340
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 347
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/4 p0, 0x0

    return-object p0

    .line 344
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 349
    :goto_4
    throw p0
.end method

.method public static removeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    return-object p0

    .line 414
    :cond_1
    const-string/jumbo v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "tel"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 419
    :cond_2
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object p0

    .line 423
    :cond_3
    const-string/jumbo v3, "sip:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    const-string/jumbo v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    return-object p0

    .line 427
    :cond_4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v3, v1, :cond_5

    return-object p0

    .line 431
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v1, v3, :cond_6

    return-object p0

    :cond_6
    add-int/2addr v1, v2

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static removeSipPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 394
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    return-object p0

    .line 398
    :cond_1
    const-string/jumbo v0, "sip:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static set3gppTPRD([B)V
    .locals 4

    .line 453
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 460
    aget-byte v0, p0, v0

    add-int/lit8 v2, v0, 0x3

    .line 463
    array-length v3, p0

    if-ge v3, v2, :cond_1

    return-void

    .line 467
    :cond_1
    aget-byte v2, p0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 469
    array-length v2, p0

    if-ge v2, v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 475
    aget-byte v2, p0, v0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static trimSipAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 359
    :cond_0
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 362
    :cond_1
    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
