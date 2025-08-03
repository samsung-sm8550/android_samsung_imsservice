.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
.super Ljava/lang/Enum;
.source "VshResolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 9

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    filled-new-array/range {v0 .. v8}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "QCIF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "QVGA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "VGA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "CIF"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "QCIF_PORTRAIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "QVGA_PORTRAIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 28
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "VGA_PORTRAIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 29
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "CIF_PORTRAIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 20
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->$values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0
.end method
