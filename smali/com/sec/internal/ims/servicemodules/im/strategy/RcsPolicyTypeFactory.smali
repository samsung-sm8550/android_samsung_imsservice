.class public Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyTypeFactory;
.super Ljava/lang/Object;
.source "RcsPolicyTypeFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsPolicyTypeFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 3

    .line 15
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 18
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyTypeFactory;->getPolicyTypeByRcsAs(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-static {p2, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyTypeFactory;->getPolicyTypeByRcsProfile(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-ne p2, v1, :cond_2

    .line 27
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyTypeFactory;->getPolicyTypeByMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object p2

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPolicyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " => "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RcsPolicyTypeFactory"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method private static getPolicyTypeByMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto/16 :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 93
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_3

    .line 94
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ATT:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 95
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_4

    .line 96
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 97
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_5

    .line 98
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SPR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 99
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_6

    .line 100
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->USCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 101
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_7

    .line 102
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VZW:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 103
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_8

    .line 104
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CMCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 105
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_9

    .line 106
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CTC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 107
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_a

    .line 108
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CU:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 109
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/Mno;->CBN:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_b

    .line 110
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CBN:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 111
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_c

    .line 112
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 113
    :cond_c
    sget-object v0, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_d

    .line 114
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TCE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 115
    :cond_d
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_e

    .line 116
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 117
    :cond_e
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 118
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 119
    :cond_f
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 120
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELIA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 121
    :cond_10
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_11

    .line 122
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->RJIL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 125
    :cond_11
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 88
    :cond_12
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0
.end method

.method private static getPolicyTypeByRcsAs(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 1

    .line 36
    const-string v0, "jibe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_BELGIUM:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 40
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 38
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 44
    :cond_4
    const-string/jumbo v0, "sec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 45
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_5

    .line 46
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 48
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 51
    :cond_6
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0
.end method

.method private static getPolicyTypeByRcsProfile(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 1

    .line 57
    const-string v0, "UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 58
    sget-object p0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_0

    .line 59
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 60
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_1

    .line 61
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 63
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_4

    .line 67
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 68
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_5

    .line 69
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CMCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 70
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_6

    .line 71
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CTC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 72
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_7

    .line 73
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CU:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 74
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->CBN:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_8

    .line 75
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CBN:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 76
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 77
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 79
    :cond_9
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 65
    :cond_a
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 82
    :cond_b
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0
.end method
