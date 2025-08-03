.class synthetic Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder$1;
.super Ljava/lang/Object;
.source "RcsQueryBuilder.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 893
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
