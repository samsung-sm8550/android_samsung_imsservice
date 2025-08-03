.class public Lorg/xbill/DNS/AFSDBRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "AFSDBRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x2a1c48785caebc65L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 21
    new-instance p0, Lorg/xbill/DNS/AFSDBRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    return-object p0
.end method
