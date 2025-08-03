.class synthetic Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
