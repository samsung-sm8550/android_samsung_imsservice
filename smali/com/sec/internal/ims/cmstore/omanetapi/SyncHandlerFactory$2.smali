.class synthetic Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;
.super Ljava/lang/Object;
.source "SyncHandlerFactory.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
