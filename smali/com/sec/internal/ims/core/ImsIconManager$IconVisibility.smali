.class public final enum Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
.super Ljava/lang/Enum;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field public static final enum HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field public static final enum SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field public static final enum UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 3

    .line 106
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "SHOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "HIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 106
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->$values()[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->$VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 106
    const-class v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 106
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->$VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    return-object v0
.end method
