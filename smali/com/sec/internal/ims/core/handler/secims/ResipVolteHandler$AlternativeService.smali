.class Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# instance fields
.field mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

.field mReason:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2396
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    return-void
.end method
