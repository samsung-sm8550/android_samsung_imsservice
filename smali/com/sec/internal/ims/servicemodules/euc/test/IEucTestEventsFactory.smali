.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;
.super Ljava/lang/Object;
.source "IEucTestEventsFactory.java"


# virtual methods
.method public abstract createAcknowledgement(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
.end method

.method public abstract createEucData(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
.end method

.method public abstract createNotification(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
.end method

.method public abstract createPersistent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
.end method

.method public abstract createSystemRequest(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
.end method

.method public abstract createUserConsent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
.end method

.method public abstract createVolatile(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
.end method
