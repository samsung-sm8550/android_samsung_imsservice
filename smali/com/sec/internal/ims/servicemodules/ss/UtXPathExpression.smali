.class final enum Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;
.super Ljava/lang/Enum;
.source "UtXPathExpression.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

.field public static final enum PARSE_BEHAVIOUR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

.field public static final enum PARSE_ERROR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

.field public static final enum PARSE_NO_REPLY_TIMER:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

.field public static final enum PARSE_ROOT_ACTIVATION:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

.field public static final enum PARSE_ROOT_BARRING:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

.field public static final enum PARSE_RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;
    .locals 6

    .line 3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ROOT_ACTIVATION:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_NO_REPLY_TIMER:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ROOT_BARRING:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ERROR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_BEHAVIOUR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    const/4 v1, 0x0

    const-string v2, "//@active"

    const-string v3, "PARSE_ROOT_ACTIVATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ROOT_ACTIVATION:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    .line 6
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    const/4 v1, 0x1

    const-string v2, "//*[local-name()=\'NoReplyTimer\']"

    const-string v3, "PARSE_NO_REPLY_TIMER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_NO_REPLY_TIMER:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    .line 7
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    const/4 v1, 0x2

    const-string v2, "//*[local-name()=\'rule\']"

    const-string v3, "PARSE_RULE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    .line 8
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    const/4 v1, 0x3

    const-string v2, "//*[contains(local-name(), \'barring\')]"

    const-string v3, "PARSE_ROOT_BARRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ROOT_BARRING:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    .line 9
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    const/4 v1, 0x4

    const-string v2, "//*[local-name()=\'constraint-failure\']"

    const-string v3, "PARSE_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ERROR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    .line 10
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    const/4 v1, 0x5

    const-string v2, "//*[contains(local-name(), \'default-behaviour\')]"

    const-string v3, "PARSE_BEHAVIOUR"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_BEHAVIOUR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    .line 3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->$values()[Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    return-object v0
.end method
