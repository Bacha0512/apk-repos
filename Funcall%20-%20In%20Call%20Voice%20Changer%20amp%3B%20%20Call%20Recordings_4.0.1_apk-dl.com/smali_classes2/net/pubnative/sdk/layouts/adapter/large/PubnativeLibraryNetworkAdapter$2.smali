.class Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPubnativeLayoutFetchFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    # invokes: Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->access$100(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;Ljava/lang/Exception;)V

    .line 151
    return-void
.end method

.method public onPubnativeLayoutFetchFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iput-object p2, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    .line 145
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    # invokes: Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadSuccess()V
    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->access$000(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;)V

    .line 146
    return-void
.end method
