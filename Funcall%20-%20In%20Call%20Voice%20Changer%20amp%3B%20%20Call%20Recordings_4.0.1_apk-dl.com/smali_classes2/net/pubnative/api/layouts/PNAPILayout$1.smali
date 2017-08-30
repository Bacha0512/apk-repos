.class Lnet/pubnative/api/layouts/PNAPILayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/layouts/PNAPILayout;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/PNAPILayout;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lnet/pubnative/api/layouts/PNAPILayout$1;->this$0:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPubnativeAssetGroupLoadFail(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout$1;->this$0:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/PNAPILayout;->invokeFetchFail(Ljava/lang/Exception;)V

    .line 112
    return-void
.end method

.method public onPubnativeAssetGroupLoadFinish(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout$1;->this$0:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/layouts/PNAPILayout;->invokeFetchFinish(Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    .line 107
    return-void
.end method
