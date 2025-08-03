.class final enum Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;
.super Ljava/lang/Enum;
.source "MvnoController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

.field public static final enum CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

.field public static final enum REGI:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

.field public static final enum VOICE:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;
    .locals 3

    .line 31
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->VOICE:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    sget-object v1, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->REGI:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    sget-object v2, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    const-string v1, "VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->VOICE:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    new-instance v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    const-string v1, "REGI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->REGI:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    new-instance v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    const-string v1, "CONFIG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    .line 31
    invoke-static {}, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->$values()[Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->$VALUES:[Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;
    .locals 1

    .line 31
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->$VALUES:[Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-virtual {v0}, [Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    return-object v0
.end method
