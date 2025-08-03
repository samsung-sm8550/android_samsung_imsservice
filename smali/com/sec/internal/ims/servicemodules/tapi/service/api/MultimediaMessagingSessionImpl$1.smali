.class synthetic Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;
.super Ljava/lang/Object;
.source "MultimediaMessagingSessionImpl.java"


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

.field static final synthetic $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 259
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_IMPLEMENTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 177
    :catch_c
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    :try_start_d
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
