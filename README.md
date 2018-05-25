# これなに
学習目的でOpenstackをデプロイするためのツールであるDevStackを触ってみる。
ついでにdockerでネットワークを定義したことがあまりなかったのでこの辺も学習したいなあという気持ち。
さらについでに、kubanetes触ってみたいマンなので寄り道しつつやろうかなみたいな。
あとdockerコンテナ上に立てたopenstack上でmagnumを動かすことでマトリョーシカやりたい

なんかdockerの権限まわりの挙動等を知らないせいでうまく行かないのであーだこーだ探していたら[Openstack Kolla](https://github.com/openstack/kolla)というものを見つけたので、こっちは一旦とめてそっちをやる。[try_kolla](https:github.com/say3no/try_kolla)。これは自分がやろうとしていたことそのものと言っても良くて、自分程度が考えついていたはもう誰かがやっていたといういつものパターン。そりゃそうだ。

要するにopenstackのコンポーネントを1プロセスと見立ててコンテナにしたらいいよねっていう。openstack自体がMSAに基づいて作られていると何かで読んだ気がするしできないはずがないよね〜〜って。



## 参考

 - [OpenStackによる、実践オンプレミスクラウド](https://www.slideshare.net/thatsdone/q-con-tokyonttdataopenstackdist2)
 - [OpenStack Docs: DevStack](https://docs.openstack.org/devstack/latest/#quick-start)
 - [OpenStackがなぜ必要なのか？素朴な疑問にお答えします。](http://openstackdays.com/archive/2016/wp-content/uploads/2016/07/P7_osdt.cloud-intro.pdf)
 - [Yahoo! JAPANにおける OpenStack on Kubernetes導入までの道のり 続](https://www.okinawaopenlabs.com/ood/2017/wp-content/uploads/sites/4/2018/01/OOD-OpenStackonKubernetesZoku.pdf)
 - [OpenStack勉強会](https://www.slideshare.net/obara13/open-stack-16166193?qid=3207b677-5c4e-4dc1-80de-c2ea356e1526&v=qf1&b=&from_search=4)
 - [OpenStackクラウド基盤構築・ハンズオンセミナー講義資料 - めもめも](http://enakai00.hatenablog.com/entry/20140106/1388978670)
