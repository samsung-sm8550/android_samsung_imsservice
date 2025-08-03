.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-void
.end method


# virtual methods
.method public getPart()Ljavax/mail/Part;
    .locals 0

    .line 73
    iget-object p0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object p0
.end method
