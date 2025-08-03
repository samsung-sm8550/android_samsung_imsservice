.class synthetic Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;
.super Ljava/lang/Object;
.source "VolatileEucWorkflow.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

.field static final synthetic $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 199
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->SUCCESS:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_NETWORK:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    :catch_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I

    :try_start_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
