.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
.super Ljava/lang/Enum;
.source "ImIconData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

.field public static final enum ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

.field public static final enum ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

.field public static final enum ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .locals 3

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    const-string v1, "ICON_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    const-string v1, "ICON_TYPE_FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    const-string v1, "ICON_TYPE_URI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 13
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    return-object v0
.end method
