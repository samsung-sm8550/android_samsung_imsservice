.class final enum Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
.super Ljava/lang/Enum;
.source "UtConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

.field public static final enum ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

.field public static final enum AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

.field public static final enum VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 3

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 45
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 46
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string v1, "ALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->$values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object v0
.end method
