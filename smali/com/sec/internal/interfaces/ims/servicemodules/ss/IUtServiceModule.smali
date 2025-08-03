.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
.super Ljava/lang/Object;
.source "IUtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract checkXcapApn(I)Z
.end method

.method public abstract enableUt(IZ)V
.end method

.method public abstract isUssdEnabled(I)Z
.end method

.method public abstract isUtEnabled(I)Z
.end method

.method public abstract queryCLIP(I)I
.end method

.method public abstract queryCLIR(I)I
.end method

.method public abstract queryCOLP(I)I
.end method

.method public abstract queryCOLR(I)I
.end method

.method public abstract queryCallBarring(III)I
.end method

.method public abstract queryCallForward(IILjava/lang/String;)I
.end method

.method public abstract queryCallWaiting(I)I
.end method

.method public abstract registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
.end method

.method public abstract updateCLIP(IZ)I
.end method

.method public abstract updateCLIR(II)I
.end method

.method public abstract updateCOLP(IZ)I
.end method

.method public abstract updateCOLR(II)I
.end method

.method public abstract updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract updateCallForward(IIILjava/lang/String;II)I
.end method

.method public abstract updateCallWaiting(IZI)I
.end method
