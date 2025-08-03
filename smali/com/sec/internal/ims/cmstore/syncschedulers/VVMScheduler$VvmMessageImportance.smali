.class public final enum Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
.super Ljava/lang/Enum;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

.field public static final enum HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

.field public static final enum INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

.field public static final enum NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
    .locals 3

    .line 203
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    sget-object v2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 204
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 205
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 206
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const-string v1, "HIGH"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 203
    invoke-static {}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->$values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->$VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
    .locals 1

    .line 203
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
    .locals 1

    .line 203
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->$VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 216
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 222
    const-string p0, "Normal"

    return-object p0

    .line 220
    :cond_0
    const-string p0, "High"

    return-object p0
.end method
