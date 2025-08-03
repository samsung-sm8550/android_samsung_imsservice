.class public final synthetic Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->$r8$lambda$PiAV8m1Dtc6mUVjPl77SoPa4flQ(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method
