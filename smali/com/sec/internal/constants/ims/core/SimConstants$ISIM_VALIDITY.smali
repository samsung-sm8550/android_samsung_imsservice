.class public final enum Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;
.super Ljava/lang/Enum;
.source "SimConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

.field public static final enum HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

.field public static final enum IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

.field public static final enum IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

.field public static final enum IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;


# instance fields
.field private mCode:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;
    .locals 4

    .line 43
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    const-string v1, "IMPU_NOT_EXISTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    .line 46
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    const-string v1, "IMPU_INVALID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    const-string v1, "IMPI_NOT_EXIST"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    .line 48
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, "HOME_DOMAIN_NOT_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    .line 43
    invoke-static {}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->$values()[Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->mCode:I

    return p0
.end method
