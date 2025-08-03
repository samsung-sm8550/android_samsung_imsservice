.class public abstract enum Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
.super Ljava/lang/Enum;
.source "RcsPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum ATT:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum CBN:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum CMCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum CTC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum CU:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum DEFAULT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum JIBE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum KT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field private static final LOG_TAG:Ljava/lang/String; = "RCS_POLICY_TYPE"

.field public static final enum ORANGE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum ORANGE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum RJIL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum RJIL_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum SEC_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum SINGTEL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum SPR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum SPR_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum SWISSCOM_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TCE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TELENOR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TELIA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TELSTRA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TMOBILE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TMOBILE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum TMOUS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field private static final UNIVERSAL_PROFILE_SUFFIX:Ljava/lang/String; = "_UP"

.field public static final enum USCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum VODA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum VODAFONE_IN_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum VODA_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum VZW:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

.field public static final enum VZW_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4vZ-cOILSR3cOd1iqsptWzfn4ro(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->lambda$fromString$1(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5pg_jygcMgt9dhwitBjp2ap00LU(Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->lambda$isOneOf$2(Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VmnmIil4B1bp0geOeUeBFhAxPJE(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->lambda$fromString$0(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 31

    .line 10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CMCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CTC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CU:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CBN:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->RJIL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v10, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELIA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v12, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v13, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ATT:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v14, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v15, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VZW:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v16, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SPR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v17, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->USCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v18, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TCE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v19, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v20, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v21, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v22, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v23, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v24, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v25, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v26, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v27, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v28, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v29, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    sget-object v30, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    filled-new-array/range {v0 .. v30}, [Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$1;

    const-string v1, "DEFAULT_RCS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$1-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$2;

    const-string v1, "CMCC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$2;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$2-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CMCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$3;

    const-string v1, "CTC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$3;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$3-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CTC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$4;

    const-string v1, "CU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$4;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$4-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CU:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 37
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$5;

    const-string v1, "CBN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$5;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$5-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->CBN:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$6;

    const-string v1, "RJIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$6;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$6-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->RJIL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 49
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$7;

    const-string v1, "SINGTEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$7;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$7-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 56
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$8;

    const-string v1, "TMOBILE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$8;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$8-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 62
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$9;

    const-string v1, "VODA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$9;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$9-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 68
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$10;

    const-string v1, "ORANGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$10;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$10-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 74
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$11;

    const-string v1, "TELENOR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$11;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$11-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$12;

    const-string v1, "TELIA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$12;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$12-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELIA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 86
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$13;

    const-string v1, "TELSTRA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$13;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$13-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 93
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$14;

    const-string v1, "ATT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$14;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$14-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ATT:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 99
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$15;

    const-string v1, "TMOUS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$15;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$15-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 105
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$16;

    const-string v1, "VZW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$16;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$16-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VZW:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 111
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$17;

    const-string v1, "SPR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$17;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$17-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SPR:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 117
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$18;

    const-string v1, "USCC"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$18;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$18-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->USCC:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 124
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$19;

    const-string v1, "TCE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$19;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$19-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TCE:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 131
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$20;

    const-string v1, "DEFAULT_UP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$20;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$20-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 138
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$21;

    const-string v1, "JIBE_UP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$21;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$21-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 144
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$22;

    const/16 v1, 0x15

    const-string v2, "SEC_UP"

    const-string v4, "SEC_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$22;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$22-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 151
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$23;

    const/16 v1, 0x16

    const-string v2, "KT_UP"

    const-string v4, "KT_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$23;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$23-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 157
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$24;

    const/16 v1, 0x17

    const-string v2, "RJIL_UP"

    const-string v4, "RJIL_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$24;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$24-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 163
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$25;

    const/16 v1, 0x18

    const-string v2, "VODAFONE_IN_UP"

    const-string v4, "VODAFONE_IN_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$25;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$25-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 170
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$26;

    const/16 v1, 0x19

    const-string v2, "ORANGE_UP"

    const-string v4, "ORANGE_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$26;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$26-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 176
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$27;

    const/16 v1, 0x1a

    const-string v2, "VODA_UP"

    const-string v4, "VODA_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$27;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$27-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 182
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$28;

    const/16 v1, 0x1b

    const-string v2, "SWISSCOM_UP"

    const-string v4, "SWISSCOM_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$28;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$28-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 188
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$29;

    const/16 v1, 0x1c

    const-string v2, "TMOBILE_UP"

    const-string v4, "TMOBILE_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$29;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$29-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 195
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$30;

    const/16 v1, 0x1d

    const-string v2, "SPR_UP"

    const-string v4, "SPR_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$30;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$30-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 201
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$31;

    const/16 v1, 0x1e

    const-string v2, "VZW_UP"

    const-string v4, "VZW_UP"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$31;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$31-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    .line 10
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->$values()[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->typeName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 2

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string p0, "RCS_POLICY_TYPE"

    const-string v0, "Warning: RcsPolicyType invalid parameter, name is null or empty"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 231
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->values()[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0
.end method

.method private static getDefaultPolicyType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 3

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Warning: RcsPolicyType "

    const-string v2, "RCS_POLICY_TYPE"

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not defined use DEFAULT_UP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not defined use DEFAULT_RCS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0
.end method

.method private static synthetic lambda$fromString$0(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z
    .locals 0

    .line 232
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->typeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$fromString$1(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 0

    .line 235
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->getDefaultPolicyType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isOneOf$2(Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z
    .locals 0

    .line 0
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
    .locals 1

    .line 10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    return-object v0
.end method


# virtual methods
.method public abstract getStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public varargs isOneOf([Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)Z
    .locals 1

    .line 250
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isUp()Z
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->typeName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
