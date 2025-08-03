.class public final enum Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
.super Ljava/lang/Enum;
.source "SemTelephonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

.field public static final enum CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

.field public static final enum CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

.field public static final enum CP_UAC_SUPPORT_REL16:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;


# instance fields
.field private final uacType:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    .locals 3

    .line 84
    sget-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    sget-object v1, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    sget-object v2, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL16:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    const-string v1, "CP_UAC_NOT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    .line 86
    new-instance v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    const-string v1, "CP_UAC_SUPPORT_REL15"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    .line 87
    new-instance v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    const-string v1, "CP_UAC_SUPPORT_REL16"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL16:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->$values()[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->$VALUES:[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->uacType:I

    return-void
.end method

.method public static fromValue(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->values()[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 98
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    .locals 1

    .line 84
    const-class v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    .locals 1

    .line 84
    sget-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->$VALUES:[Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    return-object v0
.end method
