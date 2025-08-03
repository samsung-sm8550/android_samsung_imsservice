.class public Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# static fields
.field public static final ACCOUNT_SP:Ljava/lang/String; = "cmcaccount"

.field public static final BIND_RETRY_MAX_COUNT:I = 0x5

.field public static final BIND_RETRY_TIME_INTERVAL:I = 0x1e

.field public static final REQUEST_EXPIRE_TIMER:I = 0x1f

.field public static final REQUEST_RETRY_MAX_COUNT:I = 0x3

.field public static final TOKEN_DEFAULT:Ljava/lang/String;

.field public static final TOKEN_SP:Ljava/lang/String; = "accesstoken"

.field public static final URL_DEFAULT:Ljava/lang/String; = "us-auth2.samsungosp.comus-aut"

.field public static final URL_SP:Ljava/lang/String; = "saurl"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants;->IS_TEST_MODE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "testAccessToken"

    goto :goto_0

    :cond_0
    const-string v0, "default_token"

    :goto_0
    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
