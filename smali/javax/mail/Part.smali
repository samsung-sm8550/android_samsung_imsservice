.class public interface abstract Ljavax/mail/Part;
.super Ljava/lang/Object;
.source "Part.java"


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDataHandler()Ljavax/activation/DataHandler;
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getSize()I
.end method
