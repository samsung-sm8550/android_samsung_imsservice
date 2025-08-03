.class public final enum Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
.super Ljava/lang/Enum;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/loginclient/TokenLoginClient$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 800
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 801
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v2, "failure"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 802
    new-instance v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v3, "waitingOnObserver"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 803
    new-instance v3, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v4, "timeout"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 804
    new-instance v4, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v5, "deviceNotCapable"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 805
    new-instance v5, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v6, "engineNotInstalled"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 806
    new-instance v6, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v7, "rogueEngineInstalled"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 807
    new-instance v7, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v8, "securityException"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 799
    filled-new-array/range {v0 .. v7}, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v0

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 799
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1

    .line 799
    const-class v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1

    .line 799
    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-virtual {v0}, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object v0
.end method
