.class public final synthetic Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;->f$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;->f$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->dump()V

    return-void
.end method
