.class public final enum Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;
.super Ljava/lang/Enum;
.source "UtXmlElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum CF:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum CLI_NOT_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum CLI_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum CONDITION:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum CW:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum DEFAULT_BEHAV:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum ICB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum IDENTITY:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum OCB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum OIP:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum OIR:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum ONE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum RULE_DEACTIVATED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

.field public static final enum RULE_SET:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;
    .locals 15

    .line 3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CF:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CW:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OIR:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OIP:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OCB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ICB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_DEACTIVATED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->DEFAULT_BEHAV:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_NOT_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_SET:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v12, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CONDITION:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v13, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->IDENTITY:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    sget-object v14, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ONE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    filled-new-array/range {v0 .. v14}, [Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x0

    const-string v2, "communication-diversion"

    const-string v3, "CF"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CF:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 6
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x1

    const-string v2, "communication-waiting"

    const-string v3, "CW"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CW:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 7
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x2

    const-string/jumbo v2, "originating-identity-presentation-restriction"

    const-string v3, "OIR"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OIR:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 8
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x3

    const-string/jumbo v2, "originating-identity-presentation"

    const-string v3, "OIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OIP:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 9
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x4

    const-string/jumbo v2, "outgoing-communication-barring"

    const-string v3, "OCB"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OCB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 10
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x5

    const-string v2, "incoming-communication-barring"

    const-string v3, "ICB"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ICB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 11
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x6

    const-string/jumbo v2, "rule-deactivated"

    const-string v3, "RULE_DEACTIVATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_DEACTIVATED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/4 v1, 0x7

    const-string v2, "default-behaviour"

    const-string v3, "DEFAULT_BEHAV"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->DEFAULT_BEHAV:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 13
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0x8

    const-string/jumbo v2, "presentation-restricted"

    const-string v3, "CLI_RESTRICTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 14
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0x9

    const-string/jumbo v2, "presentation-not-restricted"

    const-string v3, "CLI_NOT_RESTRICTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_NOT_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 15
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0xa

    const-string/jumbo v2, "ruleset"

    const-string v3, "RULE_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_SET:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 16
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0xb

    const-string/jumbo v2, "rule"

    const-string v3, "RULE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 17
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0xc

    const-string v2, "conditions"

    const-string v3, "CONDITION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CONDITION:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 18
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0xd

    const-string v2, "identity"

    const-string v3, "IDENTITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->IDENTITY:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    const/16 v1, 0xe

    const-string/jumbo v2, "one"

    const-string v3, "ONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ONE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->$values()[Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    return-object v0
.end method
