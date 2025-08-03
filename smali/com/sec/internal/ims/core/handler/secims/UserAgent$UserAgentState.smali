.class public final enum Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
.super Ljava/lang/Enum;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field public static final enum TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 10

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v6, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    sget-object v9, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    filled-new-array/range {v0 .. v9}, [Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 118
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "INITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "REGISTERING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "REGISTERED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "REREGISTERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "DEREGISTERING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "TERMINATING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 119
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "EMERGENCY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const-string v1, "PROHIBITTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->$values()[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->$VALUES:[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 1

    .line 117
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 1

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->$VALUES:[Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object v0
.end method
