# Benchmark Example

Custom template.

Benchmark run from 2020-03-23 19:18:17.679976Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">16 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.10.2</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">22.3</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">10 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">20 ms</td>
  </tr>
</table>

## Statistics


__Input: long_list__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">960.98</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±21.32%</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">1.57 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">782.70</td>
    <td style="white-space: nowrap; text-align: right">1.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±44.96%</td>
    <td style="white-space: nowrap; text-align: right">1.49 ms</td>
    <td style="white-space: nowrap; text-align: right">1.81 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap;text-align: right">960.98</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">782.70</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">781.25 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">625 KB</td>
    <td>0.8x</td>
  </tr>
</table>
<hr/>

__Input: short_list__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">722.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±207.35%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">3000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.16 M</td>
    <td style="white-space: nowrap; text-align: right">862.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±185.61%</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
    <td style="white-space: nowrap; text-align: right">2000 ns</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap;text-align: right">1.38 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.16 M</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">640 B</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">800 B</td>
    <td>1.25x</td>
  </tr>
</table>
<hr/>
