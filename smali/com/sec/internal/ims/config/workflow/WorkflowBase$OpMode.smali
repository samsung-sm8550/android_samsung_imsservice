.class public final enum Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
.super Ljava/lang/Enum;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;


# instance fields
.field mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 14

    .line 359
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v8, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v9, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v10, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v11, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v12, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v13, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    filled-new-array/range {v0 .. v13}, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 360
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 361
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_TEMPORARY"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 362
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "DISABLE_PERMANENTLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 363
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x3

    const/4 v2, -0x2

    const-string v3, "DISABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 364
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x4

    const/4 v2, -0x3

    const-string v3, "DORMANT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 365
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x5

    const/4 v2, -0x4

    const-string v3, "DISABLE_RCS_BY_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 366
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x6

    const/4 v2, -0x5

    const-string v3, "ENABLE_RCS_BY_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 367
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x7

    const/4 v2, -0x6

    const-string v3, "DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 368
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v1, 0x8

    const/4 v2, -0x7

    const-string v3, "DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 369
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v1, 0x9

    const/4 v2, -0x8

    const-string v3, "DISABLE_BY_RCS_DISABLED_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 370
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v1, 0xa

    const/16 v2, -0x9

    const-string v3, "DORMANT_BY_RCS_DISABLED_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 371
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v1, 0xb

    const/16 v2, -0xa

    const-string v3, "TURNEDOFF_BY_RCS_DISABLED_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 372
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v1, 0xc

    const/16 v2, -0xb

    const-string v3, "DISABLED_TERMS_AND_CONDIDIONTS_REJECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 373
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v1, 0xd

    const/16 v2, -0xc

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 359
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 359
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 359
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 0

    .line 382
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->mValue:I

    return p0
.end method
