.class synthetic Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;
.super Ljava/lang/Object;
.source "UtUtils.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;->$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;->$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
