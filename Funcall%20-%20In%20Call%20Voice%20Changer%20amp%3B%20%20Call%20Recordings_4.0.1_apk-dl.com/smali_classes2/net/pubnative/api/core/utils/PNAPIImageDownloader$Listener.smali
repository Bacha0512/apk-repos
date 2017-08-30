.class public interface abstract Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/core/utils/PNAPIImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
