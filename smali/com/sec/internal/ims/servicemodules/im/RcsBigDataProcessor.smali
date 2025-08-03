.class public abstract Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;
.super Ljava/lang/Object;
.source "RcsBigDataProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCause(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Ljava/lang/String;
    .locals 2

    .line 296
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getChatBotTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)Ljava/lang/String;
    .locals 0

    .line 308
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    .line 320
    const-string p0, ""

    return-object p0

    .line 318
    :cond_0
    const-string p0, "MPPR"

    return-object p0

    .line 316
    :cond_1
    const-string p0, "MPSU"

    return-object p0

    .line 314
    :cond_2
    const-string p0, "MPPA"

    return-object p0

    .line 312
    :cond_3
    const-string p0, "MPAD"

    return-object p0

    .line 310
    :cond_4
    const-string p0, "MPNO"

    return-object p0
.end method

.method private getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;
    .locals 0

    .line 267
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    if-eqz p2, :cond_1

    .line 276
    const-string p0, "MOFT"

    goto :goto_1

    :cond_1
    const-string p0, "ROFT"

    :goto_1
    return-object p0

    :pswitch_0
    if-eqz p2, :cond_2

    .line 274
    const-string p0, "MOFN"

    goto :goto_2

    :cond_2
    const-string p0, "ROFN"

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFileExtension(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;
    .locals 1

    .line 256
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x2e

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getMessageSize(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/lang/String;
    .locals 0

    .line 232
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p0, :cond_0

    .line 233
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 239
    :catch_0
    const-string p0, "0"

    return-object p0
.end method

.method private getOrst(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)Ljava/lang/String;
    .locals 0

    .line 281
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    .line 291
    const-string p0, "5"

    return-object p0

    .line 289
    :cond_0
    const-string p0, "3"

    return-object p0

    .line 287
    :cond_1
    const-string p0, "4"

    return-object p0

    .line 285
    :cond_2
    const-string p0, "2"

    return-object p0

    .line 283
    :cond_3
    const-string p0, "1"

    return-object p0
.end method

.method private getPhoneIdByImsi(Ljava/lang/String;)I
    .locals 0

    .line 227
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 228
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    :cond_0
    return p0
.end method

.method private getRegiRat(I)Ljava/lang/String;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_0
    const-string p1, "-1"

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->isWifiConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_WIFI"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private prepareCommonKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    const-string v0, "ORST"

    invoke-virtual {p2, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string p5, "MDIR"

    const-string v0, "0"

    invoke-virtual {p2, p5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p5

    if-eqz p5, :cond_0

    const-string v0, "1"

    .line 97
    :cond_0
    const-string p5, "MGRP"

    invoke-virtual {p2, p5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string p5, "MTYP"

    invoke-virtual {p2, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p5

    const-string p6, "MCID"

    invoke-virtual {p2, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string p5, "MIID"

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string p5, "MSIZ"

    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getMessageSize(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "PTCN"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string p3, "MRAT"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getRegiRat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareErrorKeysForRcsm(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "5"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_1
    const-string p0, "4"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :pswitch_2
    const-string p0, "3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_3
    const-string p0, "2"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :pswitch_4
    const-string p0, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :pswitch_5
    const-string p0, "0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    .line 128
    const-string p0, "ITER"

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_1
    const-string p0, "HTTP"

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_2
    const-string p0, "MSRP"

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :cond_3
    const-string p0, "SIPR"

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareFtSpecificKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    .line 108
    const-string v0, "FTYP"

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getFileExtension(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "FTRC"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareKeysForMoDrcs(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    move-object v0, p0

    move-object v1, p7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareResultKeysForMoDrcs(Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 155
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const/4 p1, 0x1

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-ne p5, p0, :cond_0

    const-string p0, "SMFB"

    invoke-virtual {p7, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    :cond_0
    const-string p0, "1"

    invoke-virtual {p0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 159
    const-string p0, "RCRP"

    invoke-virtual {p7, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 160
    :cond_1
    const-string p0, "2"

    invoke-virtual {p0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 161
    const-string p0, "RCRA"

    invoke-virtual {p7, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private prepareKeysForMtDrcs(ZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;Landroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x1

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p0, "RCMT"

    invoke-virtual {p3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getChatBotTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 196
    invoke-virtual {p3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    :cond_1
    const-string p0, "MPMT"

    invoke-virtual {p3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method private prepareKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareCommonKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    instance-of p1, p3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 88
    move-object p1, p3

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareFtSpecificKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 90
    :cond_0
    invoke-direct {p0, p2, p5, p7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareErrorKeysForRcsm(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p2, p3, p8}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareOptionalKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-void
.end method

.method private prepareOptionalKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 135
    const-string p0, "SRSC"

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 138
    const-string p0, "MRTY"

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 141
    const-string p0, "MRVA"

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private prepareResultKeysForMoDrcs(Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V
    .locals 6

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v0, "RCOF"

    const-string v1, "MPOF"

    const/4 v2, 0x1

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    move v2, v4

    goto :goto_1

    :pswitch_0
    const-string v2, "5"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_1
    const-string v2, "4"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_2
    const-string v2, "3"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const-string v2, "2"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_4
    const-string v5, "1"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :pswitch_5
    const-string v2, "0"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    :pswitch_6
    if-eqz p2, :cond_6

    move-object v0, v1

    .line 182
    :cond_6
    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-direct {p0, p5, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :pswitch_7
    if-eqz p2, :cond_7

    move-object v0, v1

    .line 178
    :cond_7
    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_8

    .line 179
    const-string p0, "MOFT"

    goto :goto_2

    :cond_8
    const-string p0, "ROFT"

    :goto_2
    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :pswitch_8
    if-eqz p2, :cond_9

    move-object v0, v1

    .line 174
    :cond_9
    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_a

    .line 175
    const-string p0, "MOFN"

    goto :goto_3

    :cond_a
    const-string p0, "ROFN"

    :goto_3
    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :pswitch_9
    if-eqz p2, :cond_b

    .line 168
    const-string p2, "MPOS"

    goto :goto_4

    :cond_b
    const-string p2, "RCOS"

    :goto_4
    invoke-virtual {p1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method private sendMoBigdata(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .locals 13

    move-object v8, p0

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getPhoneIdByImsi(Ljava/lang/String;)I

    move-result v9

    .line 65
    invoke-virtual {p0, v9, v5}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z

    move-result v10

    move-object v11, p1

    .line 66
    invoke-virtual {p0, p1, v10}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;

    move-result-object v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move v6, v9

    move-object v7, v12

    .line 68
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->sendRcsmInfoToHqmAgent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/ImSession;ILjava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v7

    move v1, v9

    move v2, v10

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeMoDrcsInfoToImsLogAgent(IZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;)V

    return-void
.end method

.method private sendRcsmInfoToHqmAgent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/ImSession;ILjava/lang/String;)V
    .locals 10

    .line 74
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-object v0, p0

    move/from16 v1, p6

    move-object v2, v9

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    move-object/from16 v6, p7

    move-object v7, p3

    move-object v8, p4

    .line 75
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 76
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->mContext:Landroid/content/Context;

    const-string v1, "RCSM"

    move/from16 v2, p6

    invoke-static {v2, v0, v1, v9}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V
    .locals 2

    const/4 v0, 0x1

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "send_mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string/jumbo v1, "overwrite_mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->mContext:Landroid/content/Context;

    const-string v0, "DRCS"

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private storeMessageCancelInfoToImsLogAgent(II)V
    .locals 2

    .line 203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "RCCC"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method

.method private storeMoDrcsInfoToImsLogAgent(IZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;)V
    .locals 9

    .line 147
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    .line 148
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareKeysForMoDrcs(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;Landroid/content/ContentValues;)V

    move v1, p1

    .line 149
    invoke-direct {p0, p1, v8}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method

.method private storeMtDrcsInfoToImsLogAgent(IZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V
    .locals 1

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    invoke-direct {p0, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareKeysForMtDrcs(ZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;Landroid/content/ContentValues;)V

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method protected abstract getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end method

.method protected abstract getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
.end method

.method protected abstract getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;
.end method

.method protected abstract getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z
.end method

.method protected abstract isWifiConnected()Z
.end method

.method public onMessageCancelSent(II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeMessageCancelInfoToImsLogAgent(II)V

    return-void
.end method

.method public onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z

    move-result p3

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->fromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object p2

    .line 48
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeMtDrcsInfoToImsLogAgent(IZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getPhoneIdByImsi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 1

    .line 32
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getCause(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 7

    .line 37
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getOrst(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v5

    if-eqz p4, :cond_0

    .line 38
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->sendMoBigdata(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 27
    const-string v2, "0"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->sendMoBigdata(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-void
.end method
