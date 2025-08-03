.class synthetic Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$1;
.super Ljava/lang/Object;
.source "WorkflowParamHandler.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$helper$SimUtil$CarrierType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 246
    invoke-static {}, Lcom/sec/internal/helper/SimUtil$CarrierType;->values()[Lcom/sec/internal/helper/SimUtil$CarrierType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$1;->$SwitchMap$com$sec$internal$helper$SimUtil$CarrierType:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/SimUtil$CarrierType;->OPEN:Lcom/sec/internal/helper/SimUtil$CarrierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$1;->$SwitchMap$com$sec$internal$helper$SimUtil$CarrierType:[I

    sget-object v1, Lcom/sec/internal/helper/SimUtil$CarrierType;->CARRIER:Lcom/sec/internal/helper/SimUtil$CarrierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$1;->$SwitchMap$com$sec$internal$helper$SimUtil$CarrierType:[I

    sget-object v1, Lcom/sec/internal/helper/SimUtil$CarrierType;->UNDEFINED:Lcom/sec/internal/helper/SimUtil$CarrierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
