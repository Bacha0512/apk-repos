.class Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPubnativeLayoutFetchFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    # invokes: Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->access$100(Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;Ljava/lang/Exception;)V

    .line 114
    return-void
.end method

.method public onPubnativeLayoutFetchFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iput-object p2, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    .line 108
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    # invokes: Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->invokeLoadSuccess()V
    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->access$000(Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;)V

    .line 109
    return-void
.end method
