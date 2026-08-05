.class Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/lidroid/xutils/util/core/CompatibleAsyncTask;

    .line 645
    iput-object p2, p0, Lcom/lidroid/xutils/util/core/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
