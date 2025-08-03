.class Lcom/sec/imsservice/ImsFrameworkApp$1;
.super Ljava/lang/Object;
.source "ImsFrameworkApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/imsservice/ImsFrameworkApp;


# direct methods
.method constructor <init>(Lcom/sec/imsservice/ImsFrameworkApp;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sec/imsservice/ImsFrameworkApp$1;->this$0:Lcom/sec/imsservice/ImsFrameworkApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 93
    const-string p0, "ImsFrameworkApp"

    const-string/jumbo p1, "onServiceConnected: ImsUpdateService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 98
    const-string p0, "ImsFrameworkApp"

    const-string/jumbo p1, "onServiceDisconnected: ImsUpdateService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
