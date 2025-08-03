.class public interface abstract Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
.super Ljava/lang/Object;
.source "IFcmHandler.java"


# virtual methods
.method public abstract getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;
.end method

.method public abstract onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end method

.method public abstract onNewToken(Ljava/lang/String;)V
.end method

.method public abstract registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V
.end method

.method public abstract unregisterFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V
.end method
