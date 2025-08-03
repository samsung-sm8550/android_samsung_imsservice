.class public Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_ID_BASE:I = 0x3e8

.field private static mIncommingMagId:I

.field private static mRPMsgRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 42
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static broadcastDcnNumber(Landroid/content/Context;I)V
    .locals 4

    .line 201
    const-string/jumbo v0, "omadm/./3GPP_IMS/DCN_NUMBER"

    const-string v1, ""

    invoke-static {p0, v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 206
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDcnNumber : value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.dm.DM_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v2, "item"

    const-string v3, "DCN_NUMBER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v0, "phoneId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected static broadcastSCBMState(Landroid/content/Context;ZI)V
    .locals 3

    .line 215
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastSCBMState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string/jumbo v1, "phoneInSCBMState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const-string/jumbo p1, "phoneId"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected static getIncommingMagId()I
    .locals 1

    .line 156
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    return v0
.end method

.method protected static getIncreasedRPRef()I
    .locals 2

    .line 101
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 103
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    .line 105
    :cond_0
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return v0
.end method

.method private static getIsmoResultBySipErrorCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_2

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_2

    .line 304
    const-string p0, "0"

    goto :goto_1

    .line 302
    :cond_1
    :goto_0
    const-string p0, "3"

    :cond_2
    :goto_1
    return-object p0
.end method

.method protected static getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .locals 5

    .line 82
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 90
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 92
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method protected static getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 114
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 118
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected static getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;[B)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 127
    array-length v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 133
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 137
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/16 v3, 0x64

    .line 138
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v1

    const/16 v3, 0x66

    if-gt v1, v3, :cond_1

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method protected static getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 47
    const-string/jumbo v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    return-object v1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-eqz p2, :cond_5

    .line 57
    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, p2, :cond_4

    .line 58
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string p2, "+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_2

    .line 61
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_2

    .line 71
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    filled-new-array {p0, p2, v0, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 72
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_2

    .line 48
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 78
    :goto_2
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getNewMsgId()I
    .locals 2

    .line 147
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e8

    .line 148
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 150
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    .line 152
    :goto_0
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    return v0
.end method

.method protected static getRPMsgRef()I
    .locals 1

    .line 109
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return v0
.end method

.method private static getRgSt(Z)Ljava/lang/String;
    .locals 2

    .line 311
    const-string v0, "gsm.operator.isroaming"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string p0, "6"

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 314
    const-string p0, "2"

    goto :goto_0

    .line 313
    :cond_1
    const-string p0, "1"

    :goto_0
    return-object p0
.end method

.method private static isKORMnoName(I)Z
    .locals 1

    .line 160
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 161
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static isProhibited(Lcom/sec/ims/ImsRegistration;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationList()Ljava/util/Map;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    .line 191
    :cond_0
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 194
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method protected static isServiceAvailable(Landroid/telephony/TelephonyManager;IZ)Z
    .locals 3

    .line 165
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 166
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result p0

    .line 167
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isKORMnoName(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    return p0

    :cond_1
    return v2

    .line 169
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 173
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0x12

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    return v2
.end method

.method protected static onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V
    .locals 1

    .line 224
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 227
    new-instance v0, Lcom/sec/ims/util/SipError;

    invoke-direct {v0, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string/jumbo p1, "smsip"

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_0
    return-void
.end method

.method private static prepareSmsCommonKeys(Landroid/content/Context;ZZLandroid/content/ContentValues;)V
    .locals 1

    .line 261
    const-string v0, "RgSt"

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getRgSt(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 264
    const-string p1, "CSDA"

    invoke-virtual {p3, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 266
    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    const-string p1, "SATT"

    invoke-virtual {p3, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendIsmoInfoToHqm(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V
    .locals 1

    .line 247
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 248
    invoke-static {p0, p5, p8, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->prepareSmsCommonKeys(Landroid/content/Context;ZZLandroid/content/ContentValues;)V

    .line 249
    const-string p5, "ORST"

    invoke-virtual {v0, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 251
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "OSIP"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 253
    const-string p2, "ORPC"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, p6

    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-gez p6, :cond_2

    move-wide p2, p4

    .line 256
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "STME"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-string p2, "ISMO"

    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method protected static sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V
    .locals 10

    .line 233
    invoke-static {p2, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIsmoResultBySipErrorCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-object v2, v9

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 234
    invoke-static/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqm(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    move/from16 v2, p8

    .line 235
    invoke-static {p0, p1, v9, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method protected static sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 239
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 240
    invoke-static {p0, p4, p5, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->prepareSmsCommonKeys(Landroid/content/Context;ZZLandroid/content/ContentValues;)V

    .line 241
    const-string p4, "MOMT"

    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string p2, "ITER"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string p2, "SMOT"

    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static storeDrcsInfoToImsLogAgent(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 2

    const/4 v0, 0x1

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "send_mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string/jumbo v1, "overwrite_mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v0, "DRCS"

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static storeMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2

    .line 270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string p2, "SOIS"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_1

    .line 274
    const-string p2, "SSIS"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 277
    :cond_0
    const-string p2, "SOIF"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_1

    .line 279
    const-string p2, "SSIF"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    :cond_1
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeDrcsInfoToImsLogAgent(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method protected static storeMtSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;IZ)V
    .locals 3

    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMTI"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    .line 289
    const-string p2, "SSTI"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeDrcsInfoToImsLogAgent(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method
