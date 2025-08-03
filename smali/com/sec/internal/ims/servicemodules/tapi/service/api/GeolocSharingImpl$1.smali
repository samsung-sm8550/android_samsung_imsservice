.class synthetic Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl$1;
.super Ljava/lang/Object;
.source "GeolocSharingImpl.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
