.class synthetic Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;
.super Ljava/lang/Object;
.source "ResipVshHandler.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 432
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
