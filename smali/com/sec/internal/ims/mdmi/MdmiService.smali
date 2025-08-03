.class public Lcom/sec/internal/ims/mdmi/MdmiService;
.super Lcom/sec/ims/mdmi/IMdmiService$Stub;
.source "MdmiService.java"


# instance fields
.field mdmiServiceModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/sec/ims/mdmi/IMdmiService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sec/internal/ims/mdmi/MdmiService;->mdmiServiceModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    .line 11
    check-cast p1, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/mdmi/MdmiService;->mdmiServiceModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    return-void
.end method


# virtual methods
.method public registerMdmiEventListener(Lcom/sec/ims/mdmi/IMdmiEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiService;->mdmiServiceModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->setMdmiEventListener(Lcom/sec/ims/mdmi/IMdmiEventListener;)V

    return-void
.end method
