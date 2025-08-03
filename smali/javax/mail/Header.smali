.class public Ljavax/mail/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Ljavax/mail/Header;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    return-object p0
.end method
