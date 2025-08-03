.class Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;
.super Landroid/database/ContentObserver;
.source "NSDSSimEventManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;Landroid/os/Handler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uri changed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NSDSSimEventManager"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query : Exist simslot on uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->-$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->-$$Nest$monSimMobilityChanged(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;I)V

    :cond_1
    return-void
.end method
