.class Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;
.super Ljava/lang/Object;
.source "VshBinderFuntions.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "resetVshVideoDisplay onFailure"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 0
    return-void
.end method
