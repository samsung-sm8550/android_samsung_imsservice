.class public final enum Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;
.super Ljava/lang/Enum;
.source "MstoreServerValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum AKA_URL:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum API_VERSION:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum AUTH_PROT:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum DATA_CONNECTION_SYNC_TIMER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum DISABLE_DIRECTION_HEADER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum EVENT_RPTING:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum MAX_BULK_DELETE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum MAX_SEARCH:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum MMS_STORE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum PUSH_SYNC_DELAY:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum SERVER_ROOT:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum SIT_URL:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum SMS_STORE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum STORE_NAME:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum SYNC_TIMER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum USER_NAME:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

.field public static final enum USER_PWD:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$yTXsuFGtKtWY56_z1zRW_C1y2Co(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->lambda$equals$0(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;
    .locals 17

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SERVER_ROOT:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->API_VERSION:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->STORE_NAME:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SIT_URL:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->AKA_URL:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->PUSH_SYNC_DELAY:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->DISABLE_DIRECTION_HEADER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SYNC_TIMER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->DATA_CONNECTION_SYNC_TIMER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->AUTH_PROT:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->USER_NAME:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->USER_PWD:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->EVENT_RPTING:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SMS_STORE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->MMS_STORE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->MAX_BULK_DELETE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    sget-object v16, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->MAX_SEARCH:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    filled-new-array/range {v0 .. v16}, [Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x0

    const-string/jumbo v2, "serverRoot"

    const-string v3, "SERVER_ROOT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SERVER_ROOT:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x1

    const-string v2, "apiVersion"

    const-string v3, "API_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->API_VERSION:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x2

    const-string/jumbo v2, "storeName"

    const-string v3, "STORE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->STORE_NAME:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x3

    const-string v2, "SiTUrl"

    const-string v3, "SIT_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SIT_URL:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x4

    const-string v2, "AKAUrl"

    const-string v3, "AKA_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->AKA_URL:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x5

    const-string v2, "PushSyncDelay"

    const-string v3, "PUSH_SYNC_DELAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->PUSH_SYNC_DELAY:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x6

    const-string v2, "disableDirectionHeader"

    const-string v3, "DISABLE_DIRECTION_HEADER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->DISABLE_DIRECTION_HEADER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/4 v1, 0x7

    const-string v2, "SyncTimer"

    const-string v3, "SYNC_TIMER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SYNC_TIMER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0x8

    const-string v2, "DataConnectionSyncTimer"

    const-string v3, "DATA_CONNECTION_SYNC_TIMER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->DATA_CONNECTION_SYNC_TIMER:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0x9

    const-string v2, "AuthProt"

    const-string v3, "AUTH_PROT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->AUTH_PROT:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0xa

    const-string v2, "UserName"

    const-string v3, "USER_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->USER_NAME:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0xb

    const-string v2, "UserPwd"

    const-string v3, "USER_PWD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->USER_PWD:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0xc

    const-string v2, "EventRpting"

    const-string v3, "EVENT_RPTING"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->EVENT_RPTING:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 21
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0xd

    const-string v2, "SMSStore"

    const-string v3, "SMS_STORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->SMS_STORE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0xe

    const-string v2, "MMSStore"

    const-string v3, "MMS_STORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->MMS_STORE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 23
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0xf

    const-string v2, "MaxBulkDelete"

    const-string v3, "MAX_BULK_DELETE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->MAX_BULK_DELETE:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    const/16 v1, 0x10

    const-string v2, "MaxSearch"

    const-string v3, "MAX_SEARCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->MAX_SEARCH:Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    .line 7
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->$values()[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->mName:Ljava/lang/String;

    return-void
.end method

.method public static equals(Ljava/lang/String;)Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->values()[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$equals$0(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;)Z
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/constants/ims/cmstore/adapter/MstoreServerValues;->mName:Ljava/lang/String;

    return-object p0
.end method
