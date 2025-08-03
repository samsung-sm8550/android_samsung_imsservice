.class Lcom/samsung/android/cmcsetting/GlobalDbHelper;
.super Ljava/lang/Object;
.source "GlobalDbHelper.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getGlobalDbIntValue(Ljava/lang/String;)I
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getGlobalDbStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
