.class Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPubnativeLayoutFetchFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    # invokes: Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->access$100(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;Ljava/lang/Exception;)V

    .line 94
    return-void
.end method

.method public onPubnativeLayoutFetchFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iput-object p2, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    .line 88
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    # invokes: Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadSuccess()V
    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->access$000(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;)V

    .line 89
    return-void
.end method
