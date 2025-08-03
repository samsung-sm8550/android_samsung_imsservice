.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;
.super Landroid/database/ContentObserver;
.source "UtServiceModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    return-void
.end method
