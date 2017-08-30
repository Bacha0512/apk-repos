.class Lnet/pubnative/api/core/view/PNAPIContentInfoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$2;->this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$2;->this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    # getter for: Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->access$000(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    return-void
.end method
