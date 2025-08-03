.class Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;
.super Landroid/os/Handler;
.source "ContactCache.java"


# static fields
.field static final HANDLE_START_CONTACT_SYNC:I


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Looper;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 735
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 739
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    .line 741
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HANDLE_START_CONTACT_SYNC : "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 747
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContactProvider is in busy state"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x12060003

    .line 748
    const-string v0, "N,CP:BUSY"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 749
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_1

    .line 745
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->onStartContactSync()V

    :cond_3
    :goto_1
    return-void
.end method
